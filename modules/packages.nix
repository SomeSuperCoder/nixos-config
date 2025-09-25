{pkgs, ...}: {
  # Install docker
  virtualisation.docker.enable = true;
  # Install openssh
  services.openssh.enable = true;
  # Make rofi plugins work
  environment.sessionVariables.ROFI_PLUGIN_PATH = "${pkgs.rofi-calc}/lib/rofi:${pkgs.rofi-emoji}/lib/rofi";
  # Allow unfree software
  nixpkgs.config.allowUnfree = true;
  # Actually install things
  environment.systemPackages = with pkgs; [
    # Super important
    home-manager

    # Graphical apps
    firefox
    chromium
    telegram-desktop
    ghostty
    gnome-tweaks
    nwg-look
    kdePackages.kdenlive
    xournalpp
    obsidian
    musicpod
    gnome-boxes
    gimp
    krita
    obs-studio
    bruno
    libreoffice
    anki-bin
    via
    authenticator
    popsicle
    mousai

    # CLI apps
    zoxide
    fd
    ripgrep
    gemini-cli
    btop
    fzf
    git
    w3m-full
    wget
    tree
    psmisc
    mongosh
    yazi
    lynx
    browsh
    mpv
    gcc
    duf
    dysk
    jq

    # Hyprland
    wofi
    waybar
    swww
    swaynotificationcenter
    libnotify
    kitty
    wl-clipboard
    hyprlock
    hyprshot
    pavucontrol
    networkmanagerapplet
    playerctl
    brightnessctl

    # Themes
    zsh-syntax-highlighting
    bibata-cursors
    candy-icons
    ## Catppuccin
    catppuccin-gtk
    catppuccin-grub
    catppuccin-papirus-folders

    # Rofi
    rofi-calc
    rofi-emoji

    # Programming languages
    go
    python314
    rustc
    cargo
    nodejs
    deno
    sqlite

    # DevOps
    minikube
    kubectl
    docker
    docker-compose

    # DPI bypass software
    zapret

    # Fetches
    neofetch
    fastfetch
    pfetch
    microfetch
    ufetch

    # Funny CLI apps ;)
    fortune
    bb
    figlet
    toilet
    cowsay
    sl
    pipes
    cbonsai
    cmatrix
    unimatrix
    cava
    lolcat
    # **Custom scripts**
    # (import ../scripts/wallpapers.nix { inherit pkgs; })
  ];
}
