{
  catppuccin.tmux = {
    enable = true;
    flavor = "macchiato";
    extraConfig = ''
      	    set -g @catppuccin_window_status_style "rounded"
      	    set -g status-right-length 100
      	    set -g status-left-length 100
      	    set -g status-left ""
      	    set -g status-right "#{E:@catppuccin_status_application}"
      	    set -ag status-right "#{E:@catppuccin_status_session}"
      	    set -ag status-right "#{E:@catppuccin_status_uptime}"

      	# Set status bar to use terminal's background
      set-option -g status-style bg=default,fg=white

      # Set window status to use terminal's background
      set-window-option -g window-status-style bg=default
      set-window-option -g window-status-current-style bg=default

      # Set message and command prompt background to default
      set-option -g message-style bg=default,fg=white
      set-option -g message-command-style bg=default,fg=white

      # Make pane borders transparent (or match terminal)
      set-option -g pane-border-style fg=default
      set-option -g pane-active-border-style fg=default
    '';
  };

  programs.tmux = {
    enable = true;
    mouse = true;
    keyMode = "vi";
    clock24 = true;
    disableConfirmationPrompt = true;
    newSession = true;
    # prefix = "C-s";

    extraConfig =
      /*
      conf
      */
      ''
        bind-key h select-pane -L
        bind-key j select-pane -D
        bind-key k select-pane -U
        bind-key l select-pane -R

        bind-key r source ~/.config/tmux/tmux.conf

        set -g status-position top
      '';
  };
}
