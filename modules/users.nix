{pkgs, ...}: {
  programs.zsh.enable = true;
  users.users.allen = {
    isNormalUser = true;
    extraGroups = ["wheel" "input" "networkmanager" "docker" "vboxusers"];
    description = "Michael Allen";
    shell = pkgs.zsh;
  };
}
