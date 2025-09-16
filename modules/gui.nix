{pkgs, ...}: {
  services.xserver.enable = true;
  services.xserver.excludePackages = [pkgs.xterm];
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  environment.gnome.excludePackages = with pkgs; [
    gnome-console
    # gnome-contacts
    # gnome-text-editor
    # gnome-system-monitor
    # gnome-disk-utility
    # gnome-music
  ];

  services.xserver.libinput = {
    enable = true;
    # Additional configuration options
    touchpad = {
      naturalScrolling = true;
      tapping = true;
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
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
}
