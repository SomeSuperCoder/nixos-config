{
  programs.zsh = {
    enable = true;

    initContent = ''
      if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
          exec tmux a
      fi

      eval "$(zoxide init zsh)"
    '';

    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;

      theme = "robbyrussell";
    };

    shellAliases = let
      flakePath = "~/nixos-config";
    in {
      rebuild-system = "sudo nixos-rebuild switch --flake ${flakePath}";
      hms = "NIXPKGS_ALLOW_UNFREE=1 home-manager switch --flake ${flakePath} --impure";
      edit-nixos-config = "cd ${flakePath} && nvim && cd -";
      collect-garbage = "sudo nix-collect-garbage -d && rebuild-system";
      update-system = "sudo echo && cd ${flakePath} && nix flake update && rebuild-system --upgrade && hms && cd -";
      package-install = "nvim ${flakePath}/modules/packages.nix && rebuild-system";
      cat = "bat";
      cd = "z";
      ls = "lsd";
      wtf = "function _wtf() { echo \"Searching for: $1\"; curl -s \"https://api.duckduckgo.com/?q=what+is+$1&format=json&no_html=1\" | jq -r \".Abstract\"; }; _wtf";
    };
  };

  # Commands
  programs.bat.enable = true;
  catppuccin.bat = {
    enable = true;
    flavor = "macchiato";
  };
}
