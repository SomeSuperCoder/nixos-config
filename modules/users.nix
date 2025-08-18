{ pkgs, ... }:
{
    programs.zsh.enable = true;
    users.users.allen = {
	isNormalUser = true;
	extraGroups = [ "wheel" "input" "networkmanager" ]; # Enable ‘sudo’ for the user.
	description = "Michael Allen";
	shell = pkgs.zsh;
    };
}
