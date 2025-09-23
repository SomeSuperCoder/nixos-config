{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  time.timeZone = "Europe/Moscow";

  # TODO: enable the firewall back on
  networking.firewall.enable = false;
}
