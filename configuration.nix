{ config, lib, pkgs, ... }:

{
        imports = [ # Include the results of the hardware scan.
                ./hardware-configuration.nix
                ./modules/boot.nix
                
        ];

        environment.systemPackages = with pkgs; [
                # Super important
                home-manager

                # Graphical apps
                firefox
                telegram-desktop
                ghostty
                gnome-tweaks
                nwg-look

                # Regular system packages
                wget 
                tree
                btop
                git
                fzf
                psmisc

		# Hyprland
                wofi
                waybar
                swww
                swaynotificationcenter
                kitty
                wl-clipboard
                hyprlock
                hyprshot
                pavucontrol
                networkmanagerapplet

                # Themes
                zsh-syntax-highlighting
                nerd-fonts.jetbrains-mono
                papirus-icon-theme
                ## Catppuccin
                catppuccin-gtk
                catppuccin-grub

                # Programming languages
                go
                python314

                # DPI bypass software
                zapret

                # Fetches
                fastfetch
                pfetch
                microfetch
        ];
 
        # Enables flakes
        nix.settings.experimental-features = ["nix-command" "flakes" ];

        networking.hostName = "nixos"; # Define your hostname.
        networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

        # Set your time zone.
        time.timeZone = "Europe/Moscow";

        # Enable the X11 windowing system.
        services.xserver.enable = true;
        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;

        # Hyrpland!!!
        programs.hyprland = {
                enable = true;
                xwayland.enable = true;
        };

        xdg.portal = {
                enable = true;
                extraPortals = with pkgs; [
                        xdg-desktop-portal-gnome
                ];
        };

        services.pipewire = {
                enable = true;
                alsa.enable = true;
                alsa.support32Bit = true;
                pulse.enable = true;
        };
       
        environment.sessionVariables = {
                GSK_RENDERER = "ngl"; # Fix gnome wayland

                # For hyprland
                NIXOS_OZONE_WL = "1";
        };

        # ======================================================================

        # Define a user account. Don't forget to set a password with ‘passwd’.
        programs.zsh.enable = true;
        users.users.allen = {
                isNormalUser = true;
                extraGroups = [ "wheel" "input" "networkmanager" ]; # Enable ‘sudo’ for the user.
                description = "Michael Allen";
                shell = pkgs.zsh;
        };

        # DPI bypass
        services.zapret = {
	        enable = true;
	        params = [
		        "--dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1"
	        ];
        };

        # Most users should NEVER change this value after the initial install, for any reason,
        # even if you've upgraded your system to a new NixOS release.
        system.stateVersion = "25.05";
}

