{ pkgs, lib, ... }:

{
    catppuccin.tmux = {
	enable = true;
	flavor = "macchiato";
    };

    programs.tmux = {
	enable = true;
	mouse = true;
	keyMode = "vi";
	clock24 = true;
	# shortcut = "s";
	extraConfig = ''
	set -g prefix C-s
	set -g status-position top
	'';
    };
}
