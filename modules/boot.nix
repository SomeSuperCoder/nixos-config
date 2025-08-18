{ config, lib, pkgs, ... }:

{
    boot.loader.grub.enable = true;
    boot.loader.grub.efiSupport = true;
    boot.loader.grub.device = "/dev/sda";
    catppuccin.grub.enable = true;
    catppuccin.grub.flavor = "macchiato";

    boot.kernelPackages = pkgs.linuxPackages_latest;

    boot.plymouth = {
	enable = true;
    };
    boot.initrd.systemd.enable = true;
    catppuccin.plymouth.enable = true;
    catppuccin.plymouth.flavor = "macchiato";
}
