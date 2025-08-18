{ pkgs, ... }:

{
        services.xserver.enable = true;
        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;

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
