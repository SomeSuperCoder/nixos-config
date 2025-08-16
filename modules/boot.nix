{ config, lib, pkgs, ... }:

{
# Use the GRUB 2 boot loader.
    boot.loader.grub.enable = true;
    boot.loader.grub.efiSupport = true;
    boot.loader.grub.device = "nodev"; # or "nodev" for efi only
    catppuccin.grub.enable = true;
    catppuccin.grub.flavor = "macchiato";

# Use latest kernel.
	boot.kernelPackages = pkgs.linuxPackages_latest;

# Plymouth
    boot.plymouth = {
	enable = true;
	# theme = "matrix";  # Replace with your desired theme name
    };
    boot.initrd.systemd.enable = true;
    catppuccin.plymouth.enable = true;
    catppuccin.plymouth.flavor = "macchiato";
}
