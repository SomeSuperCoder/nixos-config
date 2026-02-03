{pkgs, ...}: {
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.efi.canTouchEfiVariables = true;
  catppuccin.grub.enable = true;
  catppuccin.grub.flavor = "macchiato";

  boot.kernelPackages = pkgs.linuxPackages_6_12;

  boot.plymouth = {
    enable = true;
  };
  boot.initrd.systemd.enable = true;
  catppuccin.plymouth.enable = true;
  catppuccin.plymouth.flavor = "macchiato";
}
