{pkgs, ...}: {
  programs.zsh.enable = true;
  users.users.allen = {
    isNormalUser = true;
    extraGroups = ["wheel" "input" "networkmanager" "docker" "vboxusers" "dialout" "tty"];
    description = "Michael Allen";
    shell = pkgs.zsh;
  };
}
