{ config, lib, pkgs, ... }:

{
  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Plymouth
  boot.plymouth = {
    enable = true;
    themePackages = [ pkgs.plymouth-matrix-theme ];  # Replace with your theme package
    theme = "matrix";  # Replace with your desired theme name
  };
  boot.initrd.systemd.enable = true;

}
