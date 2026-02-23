{
  imports = [
    ./hardware-configuration.nix

    ./modules/boot.nix
    ./modules/packages.nix
    ./modules/gui.nix
    ./modules/dpi.nix
    ./modules/users.nix
    ./modules/netandtime.nix
    ./modules/autoremove.nix
    ./modules/nix.nix
    ./modules/fonts.nix
    ./modules/input.nix
    ./modules/systemd.nix
    ./modules/antiissues.nix
    ./modules/vpn.nix
  ];

  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  system.stateVersion = "25.05";
}
