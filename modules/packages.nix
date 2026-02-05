{
  pkgs,
  system,
  inputs,
  ...
}: {
  programs.nix-ld.enable = true;

  # QMK
  services.udev.packages = with pkgs; [qmk vial];
  # Install docker
  virtualisation.docker.enable = true;
  # Install openssh
  services.openssh.enable = true;
  # Make rofi plugins work
  environment.sessionVariables.ROFI_PLUGIN_PATH = "${pkgs.rofi-calc}/lib/rofi:${pkgs.rofi-emoji}/lib/rofi";
  # Allow unfree software
  nixpkgs.config.allowUnfree = true;
  # Flatpak
  # services.flatpak.enable = true;
  # Actually install things
  environment.systemPackages = with pkgs; [
    inputs.zen-browser.packages.${system}.default

    # Super important
    home-manager

    # Graphical apps
    firefox
    chromium
    telegram-desktop
    alacritty
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
    authenticator
    popsicle
    mousai
    feh
    blender
    protonvpn-gui
    onlyoffice-desktopeditors
    vial
    # n8n
    audacity

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
    duf
    dysk
    jq
    lsd
    file
    autossh
    k6
    gnumake
    dnsutils
    pnpm
    sqlc
    postgresql
    goose
    typst

    openssl
    pkg-config
    glfw
    libGL

    # Run non-Nix-compatable apps
    steam-run

    # Hyprland
    wofi
    waybar
    swww
    swaynotificationcenter
    libnotify
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
    corefonts
    ## Catppuccin
    catppuccin-gtk
    catppuccin-grub
    catppuccin-papirus-folders

    # Rofi
    rofi-calc
    rofi-emoji

    # Programming
    go
    python314
    rustc
    cargo
    nodejs
    deno
    sqlite
    gcc
    clang
    tinygo
    avrdude
    openjdk
    arduino-cli
    elixir
    tailwindcss
    inotify-tools
    redis
    bfg-repo-cleaner

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
