{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  time.timeZone = "Europe/Moscow";

  networking.hosts = {
    "127.0.0.1" = ["api.hframe.org"];
  };

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [22 80 8080 8090];
  };
}
