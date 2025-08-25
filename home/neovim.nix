{
    programs.nixvim = {
	enable = true;
	colorschemes.catppuccin.enable = true;

	globalOpts = {
	    number = true;
	    shiftwidth = 4;
	};

	globals.mapleader = " ";

	plugins = {
	    lualine.enable = true;
	    telescope.enable = true;
	    oil.enable = true;
	    web-devicons.enable = true;
	    treesitter.enable = true;
	    commentary.enable = true;
	    which-key.enable = true;
	    trouble.enable = true;
	    otter.enable = true;
	    autoclose.enable = true;
	    /* Dependency for otter */ treesitter.settings.highlight.enable = true;

	    tiny-inline-diagnostic = {
		enable = true;
	    };

	    alpha = {
		enable = true;
		theme = "dashboard";
	    };

	    neo-tree = {
		enable = true;
		enableDiagnostics = true;
		enableGitStatus = true;
		enableModifiedMarkers = true;
		enableRefreshOnWrite = true;
		closeIfLastWindow = true;
	    };
	    notify = {
		enable = true;
		settings = {
		    backgroundColour = "#1e1e2e";
		    fps = 60;
		    settings.render = "default";
		    timeout = 500;
		    topDown = true;
		};
	    };
	    cmp = {
		enable = true;
		autoEnableSources = true;
		settings.sources = [
		{ name = "nvim_lsp"; }
		{ name = "path"; }
		{ name = "buffer"; }
		];
		settings.mapping = {
		    "<C-Space>" = "cmp.mapping.complete()";
		    "<C-d>" = "cmp.mapping.scroll_docs(-4)";
		    "<C-e>" = "cmp.mapping.close()";
		    "<C-f>" = "cmp.mapping.scroll_docs(4)";
		    "<CR>" = "cmp.mapping.confirm({ select = true })";
		    "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
		    "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
		};
	    };

	    lsp = {
		enable = true;
		servers = {
		    nixd.enable = true;
		    gopls.enable = true;
		    pyright.enable = true;
		    ts_ls.enable = true;
		    rust_analyzer = {
			enable = true;
			installCargo = true;
			installRustc = true;
		    };
		};
		keymaps = {
		    silent = true;
		    lspBuf = {
			gd = "definition";
			gD = "declaration";
			gi = "implementation";
			gr = "references";
			K = "hover";
			"<leader>rn" = "rename";
			"<leader>ca" = "code_action";
		    };
		};
	    };
	};

	keymaps = [
# Telescope
	{
	    action = "<cmd>Telescope live_grep<CR>";
	    key = "<leader>fw";
	}
	{
	    action = "<cmd>Telescope find_files<CR>";
	    key = "<leader>ff";
	}
	{
	    action = "<cmd>Telescope git_commits<CR>";
	    key = "<leader>fg";
	}
	{
	    action = "<cmd>Telescope oldfiles<CR>";
	    key = "<leader>fh";
	}
	{
	    action = "<cmd>Telescope colorscheme<CR>";
	    key = "<leader>ch";
	}
	{
	    action = "<cmd>Telescope man_pages<CR>";
	    key = "<leader>fm";
	}
# Commentary
	{
	    action = "<cmd>Commentary<CR>";
	    key = "<leader>/";
	}
# Neotree
	{
	    action = "<cmd>Neotree toggle<CR>";
	    key = "<leader>e";
	}
	];
    };
}
