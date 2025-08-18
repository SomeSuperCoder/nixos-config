{ config, lib, pkgs, ... }:

{
        imports = [
                ./hardware-configuration.nix

                ./modules/boot.nix
		./modules/packages.nix
		./modules/gui.nix
		./modules/dpi.nix
		./modules/users.nix
		./modules/netandtime.nix
        ];

        nix.settings.experimental-features = ["nix-command" "flakes" ];

        # Most users should NEVER change this value after the initial install, for any reason,
        # even if you've upgraded your system to a new NixOS release.
        system.stateVersion = "25.05";
}

