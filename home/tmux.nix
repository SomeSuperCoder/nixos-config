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
	extraConfig = ''
	    set -g status-position top
	    
	    set -g @catppuccin_window_status_style "rounded"
	    set -g status-right-length 100
	    set -g status-left-length 100
	    set -g status-left ""
	    set -g status-right "#{E:@catppuccin_status_application}"
	    set -ag status-right "#{E:@catppuccin_status_session}"
	    set -ag status-right "#{E:@catppuccin_status_uptime}"
	    '';
    };
}
