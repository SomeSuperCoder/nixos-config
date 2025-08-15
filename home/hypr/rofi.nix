{
        catppuccin.rofi = {
                enable = true;
                flavor = "latte";
        };

        programs.rofi = {
                enable = true;
                
                extraConfig = {
                        modi = "drun";
                        show-icons = true;
                        drun-display-format = "{icon} {name}";
                        display-drun = "  Apps";
                        font = "JetBrainsMono Nerd Font Medium 10";
                };
        };
}
